cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.38.0"
  sha256 arm:   "55a03d283b1a50651afa7f3776b2e243b0046eeda1c26168c1f86334bf5961dc",
         intel: "89e460141e1c7cdd335607826daa21f95354924c8fb174bbde3f7239858ad33e"

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
