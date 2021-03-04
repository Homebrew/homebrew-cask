cask "ibm-cloud-cli" do
  version "1.4.0"
  sha256 "b30c4459041d583f1c9d707ec2962e44827e751fb948cb0a527a9d6c89e1078a"

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
                       "-i", "",
                       "-e", "/^### Added by IBM Cloud CLI$/d",
                       "-e", '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d',
                       File.realpath("/etc/profile")
                     ],
                     sudo: true
    end

    if File.exist?("#{ENV["HOME"]}/.bashrc")
      system_command "/usr/bin/sed",
                     args: [
                       "-E",
                       "-i", "",
                       "-e", "/^### Added by IBM Cloud CLI$/d",
                       "-e", '/^source \/usr\/local\/Bluemix\/bx\/bash_autocomplete$/d',
                       File.realpath("#{ENV["HOME"]}/.bashrc")
                     ]
    end

    if File.exist?("#{ENV["HOME"]}/.zshrc")
      system_command "/usr/bin/sed",
                     args: [
                       "-E",
                       "-i", "",
                       "-e", "/^### Added by IBM Cloud CLI$/d",
                       "-e", '/^source \/usr\/local\/Bluemix\/bx\/zsh_autocomplete$/d',
                       File.realpath("#{ENV["HOME"]}/.zshrc")
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
