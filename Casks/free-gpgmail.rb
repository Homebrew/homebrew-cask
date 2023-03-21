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
    version "6,2022.2,"
    sha256 "605b292cf10fbbb5fbedefbd0e1a889c616d2d057dd862bed51899d217840489"
  end
  on_ventura :or_newer do
    version "7.1,2023.1,"
    sha256 "15257703e963f222c028ac29682b20d9a743f6e005860bdcd288b633984f4338"
  end

  url "https://github.com/Free-GPGMail/Free-GPGMail/releases/download/v#{version.csv.second}/Free-GPGMail_#{version.csv.first}-#{version.csv.second}#{version.csv.third}.mailbundle.zip"
  name "Free-GPGMail"
  desc "Apple Mail plugin for GnuPG encrypted e-mails"
  homepage "https://github.com/Free-GPGMail/Free-GPGMail"

  # This restricts matching to new releases that use the same major as the
  # cask `version` (based on the execution environment). As such, this won't
  # surface a new major version and that will need to be handled manually.
  livecheck do
    url "https://github.com/Free-GPGMail/Free-GPGMail/releases?q=prerelease%3Afalse"
    regex(/.*?Free-GPGMail[._-]v?(\d+)[_-](\d+(?:\.\d+)+)([_-][^"' >]+?)?[._-]mailbundle\.zip/i)
    strategy :page_match do |page, regex|
      version_suffix = version.csv.third&.sub(/^[_-]/, "")
      page.scan(regex).map do |match|
        next if match[0] != version.csv.first
        next if match[2]&.sub(/^[_-]/, "") != version_suffix

        "#{match[0]},#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates false
  depends_on macos: ">= :mojave"
  depends_on cask: "gpg-suite-no-mail"

  artifact "Free-GPGMail_#{version.csv.first}.mailbundle", target: "#{Dir.home}/Library/Mail/Bundles/Free-GPGMail_#{version.csv.first}.mailbundle"

  uninstall quit:   "org.gpgtools.gpgmail.upgrader",
            delete: "~/Library/Mail/Bundles/Free-GPGMail_#{version.csv.first}.mailbundle"
end
