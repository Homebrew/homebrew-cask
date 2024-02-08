cask "free-gpgmail" do
  on_catalina :or_older do
    version "5,2022.2,-unsigned"
    sha256 "43e349ae21213e36f48677551215f61a9d183907ef0596c4b54d1d745bb7cb27"
  end
  on_big_sur do
    version "5,2022.2,-signed"
    sha256 "1935b0f65a5351c1c84870f316d0b97331c40ca50c13a912a703a68a08dabc4e"
  end
  on_monterey do
    version "6.3,2023.2,"
    sha256 "9630a8896e7e9c4691bda4b4cb529b28f0781aa71ad188d326a7587083b23c1a"
  end
  on_ventura :or_newer do
    version "7.2,2023.3,"
    sha256 "b633571b30a990e2a14bab0b9c6543c6e6f4dba172802ae1472d8a083e18d15b"
  end

  url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version.csv.second}/Free-GPGMail_#{version.csv.first}-#{version.csv.second}#{version.csv.third}.mailbundle.zip"
  name "Free-GPGMail"
  desc "Apple Mail plugin for GnuPG encrypted e-mails"
  homepage "https://github.com/Free-GPGMail/Free-GPGMail"

  # This restricts matching to new releases that use the same major as the
  # cask `version` (based on the execution environment). As such, this won't
  # surface a new major version and that will need to be handled manually.
  livecheck do
    url :url
    regex(/^Free-GPGMail[._-]v?(\d+(?:\.\d+)*)[_-](\d+(?:\.\d+)+)([_-].+?)?[._-]mailbundle\.zip$/i)
    strategy :github_releases do |json, regex|
      version_suffix = version.csv.third&.sub(/^[_-]/, "")

      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?
          next if match[1].split(".").first != version.csv.first.split(".").first
          next if match[3]&.sub(/^[_-]/, "") != version_suffix

          "#{match[1]},#{match[2]},#{match[3]}"
        end
      end.flatten
    end
  end

  depends_on cask: "gpg-suite-no-mail"
  depends_on macos: ">= :mojave"

  artifact "Free-GPGMail_#{version.csv.first.major}.mailbundle", target: "~/Library/Mail/Bundles/Free-GPGMail_#{version.csv.first.major}.mailbundle"

  uninstall quit:   "org.gpgtools.gpgmail.upgrader",
            delete: "~/Library/Mail/Bundles/Free-GPGMail_#{version.csv.first.major}.mailbundle"

  # No zap stanza required
end
