cask "ibm-cloud-cli" do
  version "1.2.1"
  sha256 "dbad729d726a21ec60b16aee0aba711e9d577090b699deac7d9cf9df25053854"

  url "https://public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli/#{version}/IBM_Cloud_CLI_#{version}.pkg"
  appcast "https://github.com/IBM-Cloud/ibm-cloud-cli-release/releases.atom"
  name "Bluemix-CLI"
  desc "IBM Cloud command-line interface"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  depends_on cask: "docker"
  depends_on formula: "kubectl"
  depends_on formula: "kubernetes-helm"

  pkg "IBM_Cloud_CLI_#{version}.pkg"

  uninstall_postflight do
    if File.exist?("/etc/profile")
      system_command "/usr/bin/sed",
                     args: [
                       "-E",
                       "-i", ".bluemix_uninstall_bak",
                       "-e", "/^### Added by IBM Cloud CLI$/d",
                       "-e", '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d',
                       "/etc/profile"
                     ],
                     sudo: true
    end

    if File.exist?("#{ENV["HOME"]}/.bashrc")
      system_command "/usr/bin/sed",
                     args: [
                       "-E",
                       "-i", ".bluemix_uninstall_bak",
                       "-e", "/^### Added by IBM Cloud CLI$/d",
                       "-e", '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d',
                       "#{ENV["HOME"]}/.bashrc"
                     ]
    end

    if File.exist?("#{ENV["HOME"]}/.zshrc")
      system_command "/usr/bin/sed",
                     args: [
                       "-E",
                       "-i", ".bluemix_uninstall_bak",
                       "-e", "/^### Added by IBM Cloud CLI$/d",
                       "-e", '/^source \/usr\/local\/Bluemix\/bx\/zsh_autocomplete$/d',
                       "#{ENV["HOME"]}/.zshrc"
                     ]
    end
  end

  uninstall pkgutil: "com.ibm.cloud.cli",
            delete:  [
              "/usr/local/bin/bluemix",
              "/usr/local/bin/bx",
              "/usr/local/bin/bluemix-analytics",
              "/usr/local/Bluemix",
              "/usr/local/ibmcloud",
            ]

  zap trash: "~/.bluemix"

  caveats do
    files_in_usr_local
  end
end
