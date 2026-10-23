cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.48.1"
  sha256 arm:   "d6d122b3ecddc37bba260a1c2ae410d6bdd6bc8e438b6ea86b3c983339df91f0",
         intel: "411d01f9f11ed774501cc9bc00b9f0e31160579fbb58f5224159098e556fe5f1"

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
