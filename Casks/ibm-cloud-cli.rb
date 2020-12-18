cask "ibm-cloud-cli" do
  version "1.3.0"
  sha256 "5ab4cee0c40d59b97373f4f9734da532419dc0e8c6a1e0c3d74382226e3a8a32"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}.pkg"
  appcast "https://github.com/IBM-Cloud/ibm-cloud-cli-release/releases.atom"
  name "IBM Cloud CLI"
  desc "Command-line API client"
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
