cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.28.2"
  sha256 arm:   "265febdd6536211fbb31a4bb57a6c008d9933115d43adcfcd9c5645b08ed8d45",
         intel: "008c2c7cd5f651ad77f1b2eb04930e37a212d1f36bf988925790b232db708efc"

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
