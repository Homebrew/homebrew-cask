cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.38.1"
  sha256 arm:   "49170e7ec632ffe68c2f03cf432256eedfbd27c9f4f989c44e201bd09dfa42af",
         intel: "5437ee3d1af2817a63cbc108f3a4d934683b30a5e41aad6fb095f7d4e533d8b5"

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
