cask "scala-ide" do
  version "4.7.0,2.12,20170929"
  sha256 "b86a37066cb375615c2a9a61a0152b66a0b172b90e15a33c339f89d2516315f9"

  url "https://downloads.typesafe.com/scalaide-pack/#{version.csv.first}-vfinal-oxygen-#{version.csv.second.no_dots}-#{version.csv.third}/scala-SDK-#{version.csv.first}-vfinal-#{version.csv.second}-macosx.cocoa.x86_64.zip",
      verified: "downloads.typesafe.com/scalaide-pack/"
  name "Scala IDE"
  homepage "https://scala-ide.org/"

  livecheck do
    url "https://scala-ide.org/download/sdk.html"
    regex(%r{prefix:.*?(\d+(?:\.\d+)+)-vfinal-[a-z]+-\d+-(\d+)/scala-SDK-\1-vfinal-(\d+(?:\.\d+)+)["']}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[3]},#{match[2]}"
    end
  end

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/2731
  app "eclipse.app", target: "Scala IDE.app"
end
