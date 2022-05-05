cask "free-gpgmail" do
  if MacOS.version <= :catalina
    version "5,2021.3.1,-unsigned"
    sha256 "3a3c9290622cc3fe8d4761050363917d009f9fa923eb32d436364f0ae9a161b9"
  elsif MacOS.version <= :big_sur
    version "5,2021.3.1,-signed"
    sha256 "ee0b1a313afedb5cdf8a9703b00f35040b3109877247bb342c92a60b53944c9a"
  elsif MacOS.version >= :monterey
    version "6,2021.3.1,"
    sha256 "d15ae3bad7a40c98a078b5be0891dd38d43240cde7acbfd5f7ac03fafad4bbb1"
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
    regex(/href=.*?Free-GPGMail[._-]v?(\d+)-(\d+(?:\.\d+)+)(-[^"' >]+?)?[._-]mailbundle\.zip/i)
    strategy :github_latest do |page, regex|
      page.scan(regex).map do |match|
        next if match[0] != version.csv.first

        if match[2].present?
          next if version.csv.third.present? && match[2] != version.csv.third

          "#{match[0]},#{match[1]},#{match[2]}"
        else
          "#{match[0]},#{match[1]},"
        end
      end
    end
  end

  auto_updates false
  depends_on macos: ">= :mojave"
  depends_on cask: "gpg-suite-no-mail"

  artifact "Free-GPGMail_#{version.csv.first}.mailbundle", target: "#{ENV["HOME"]}/Library/Mail/Bundles/Free-GPGMail_#{version.csv.first}.mailbundle"

  uninstall delete: "~/Library/Mail/Bundles/Free-GPGMail_#{version.csv.first}.mailbundle"
end
