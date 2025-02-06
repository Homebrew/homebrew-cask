cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.32.1"
  sha256 arm:   "1b588133b218eeae7067f3f736d2f23535ae21ed877ecfe1983951da302947a2",
         intel: "807c5d71b2a4b4e8d0bbac62e7a7f6f12be6996055262e8bfcebecf3cf1a0de9"

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
