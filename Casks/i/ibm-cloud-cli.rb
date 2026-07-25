cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.46.0"
  sha256 arm:   "b35258c070c606e51c4ad77875bd6a34a5e4d9ab4230bd89e9f36beccb678fcf",
         intel: "88737faa2790adba7402a79bad25f353fb910d4ce7118e85d5879eecda4ad277"

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
