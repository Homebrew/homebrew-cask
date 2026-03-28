cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.42.0"
  sha256 arm:   "58c1d7bee5c054c244c7362adbf3b485f2aad8b348dc635f65b0cbef07b22662",
         intel: "7ac66b9e915a6dcb3473054d21897d76960e18bc0c1260899434a8af34d5b6ba"

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
