cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.33.0"
  sha256 arm:   "a652ad3e9b4f903c8c784408e2d47c110f0699b8407b6198f86a7d6f37a20cbe",
         intel: "7a6a0740f22a44f55d205d7d78a012f933ec70ac2acceaa1f1a62c064c676043"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}#{arch}.pkg"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
  end

  pkg "IBM_Cloud_CLI_#{version}#{arch}.pkg"

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
