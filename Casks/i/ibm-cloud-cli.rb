cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.43.0"
  sha256 arm:   "dfc31eb354fd6b7bc7cbee8e356c66c53bb608b42ada1ce7d3e6c2c6cbee7c46",
         intel: "dba17782c7773f0c9739b383c9a7ecc8bb6da86d9c17d87f1178a74f803a1785"

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
