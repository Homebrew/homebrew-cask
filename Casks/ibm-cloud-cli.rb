cask "ibm-cloud-cli" do
  version "2.7.0"
  sha256 "72448c796dcb7e432b0be705b3f998b62e45c29c0da1a1f21bcb8482a29cf666"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}.pkg"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
  end

  depends_on cask: "docker"
  depends_on formula: "helm"
  depends_on formula: "kubernetes-cli"

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
