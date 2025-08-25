cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.36.0"
  sha256 arm:   "6050b0d3aaf013c242a92b837d369ee4ffaae1cf194fb253b684defe1629f023",
         intel: "abca4ca9097649de58b2d28001de94f4f892c2dffedb3728200d3c2fb94c41a9"

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
