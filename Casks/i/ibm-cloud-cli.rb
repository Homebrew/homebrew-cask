cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.23.0"
  sha256 arm:   "30d6a941ed618c07fedeb9eebce5a5e5a804add8ba05921ea55a4e3ed511edbc",
         intel: "5c67ccae5bc5a40840e914baeb959e1d0b97ff264443b0bc4b33a2ca21784bb6"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}#{arch}.pkg"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  # Upstream publishes file links in the description of GitHub releases.
  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
    regex(/IBM[._-]Cloud[._-]CLI[._-]v?(\d+(?:\.\d+)+)#{arch}\.(?:dmg|pkg)/i)
    strategy :github_latest do |json, regex|
      match = json["body"]&.match(regex)
      next if match.blank?

      match[1]
    end
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
