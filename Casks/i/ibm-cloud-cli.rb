cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.47.1"
  sha256 arm:   "e92dcc33244edaac277a3b3bc4263b39a5e048e15719d5c8bbc66ba1802c3d96",
         intel: "c10ce4cb1da92d487f611d6d7f8c18dd010d368017234e4b9385f9abe4137263"

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
