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

  uninstall pkgutil: "com.ibm.cloud.cli",
            delete:  [
              "/usr/local/bin/bluemix",
              "/usr/local/bin/bx",
              "/usr/local/ibmcloud",
            ]

  zap trash: "~/.bluemix"

  caveats do
    files_in_usr_local
  end
end
