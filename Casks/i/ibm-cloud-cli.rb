cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.47.0"
  sha256 arm:   "0e63f6fcdb372401dd9f2d9cce09dc51f8d9f658733198c660581104574b4152",
         intel: "a25b81b8602743b3c849fb3a8c6a966002cc0549ee6f5cd5cdc59b12c3b6f010"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}#{arch}.pkg"
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
