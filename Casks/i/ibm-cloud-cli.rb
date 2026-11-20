cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.49.0"
  sha256 arm:   "bceb012532df91490c8b89628b8d54a5b44a08f12293fd064d6ede3a231611b6",
         intel: "53f62815c506f5db9be973cbfb093933d038d880951c33ec5fc1bc6a8ab70e89"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli-dn/#{version}/IBM_Cloud_CLI_#{version}#{arch}.pkg"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
  end

  depends_on :macos

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
