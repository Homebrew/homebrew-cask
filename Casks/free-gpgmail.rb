cask "free-gpgmail" do
  if MacOS.version <= :catalina
    version "5,2022.1,"
    sha256 "bfcb6765ec1ec7141a73d4f464654ebd34d3a8abc418debcdb3a4c272f92b903"
  elsif MacOS.version <= :big_sur
    version "5,2022.1,_signed"
    sha256 "2dbce4008294f4e06e3c45828a788f7a9586de6f1e9c3d6c1b65de888f09b401"
  elsif MacOS.version >= :monterey
    version "6,2022.1.1,"
    sha256 "c2c0f54b97e10af583b1db007006d4fa56531879390424aa5ab573d8b0ce66cf"
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
    regex(/href=.*?Free-GPGMail[._-]v?(\d+)[_-](\d+(?:\.\d+)+)([_-][^"' >]+?)?[._-]mailbundle\.zip/i)
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

  uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_#{version.csv.first}.mailbundle"
end
