cask "ibm-cloud-cli" do
  version "1.6.0"
  sha256 "d202f4ff3fc49bb1acbc8c0098b7ae9129bfeeff716cf2f658e2cfa655cf9599"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}.pkg"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
    strategy :git
  end

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
