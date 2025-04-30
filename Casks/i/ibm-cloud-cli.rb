cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.34.0"
  sha256 arm:   "c8bb9ea754cd21971348c44af5c434dbdda7ab42702dce63929da37d5d07674b",
         intel: "1cc99b424e9921dc3383f39d22cbf4aec38d4154b8ddcf027b19d8492c484723"

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
