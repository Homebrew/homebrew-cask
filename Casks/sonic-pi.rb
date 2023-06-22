cask "sonic-pi" do
  version "4.3.0"
  sha256 "c5646b221d61ba55c8e1025a646718d1244333bd57e2a7bccc8eb71c5a7be585"

  url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version.dots_to_hyphens}.dmg"
  name "Sonic Pi"
  desc "Code-based music creation and performance tool"
  homepage "https://sonic-pi.net/"

  livecheck do
    url :homepage
    regex(/href=.*?Sonic-Pi[^"' >]*?[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("-", ".") }
    end
  end

  app "Sonic Pi.app"
end
