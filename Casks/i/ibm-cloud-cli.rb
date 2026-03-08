cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.41.1"
  sha256 arm:   "3e1bac9bc5763dae2b5bf88432b9e1ea0168dbd87fc98d7dc1f6dabf3c911c57",
         intel: "38f37f86f5eac6c1df98c6eaaf5f26360b50ffc5790db272981be0942ce28a06"

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
