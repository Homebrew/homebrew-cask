cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.26.1"
  sha256 arm:   "d432d56cf0c8e0e6e5d22427eb5595420667cb0375cfba32d1eddd4d40dec672",
         intel: "53bdd5507a84570d8687cc0b5a0c82023d8a5a9356b0ded12a2ef75aac96df6c"

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
