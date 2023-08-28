cask "sonic-pi" do
  arch arm: "arm64", intel: "x64"

  if MacOS.version <= :mojave
    version "3.3.1"
    sha256 "0bfd12f930311e8ef1c7306dc9c012cfcc1f8e50710fd26a8c18ba003573a506"
    url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version.dots_to_hyphens}.dmg"
  elsif MacOS.version <= :catalina
    version "4.3.0"
    sha256 "c5646b221d61ba55c8e1025a646718d1244333bd57e2a7bccc8eb71c5a7be585"
    url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version.dots_to_hyphens}.dmg"
  elsif MacOS.version <= :monterey
    version "4.4.0"
    sha256 "7ed0e94cf92fdf2e8d51ee42c5f7c3478fbcef9630eb12dccf203f5e72bb517f"
    url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-x64-v#{version.dots_to_hyphens}.dmg"
  else
    version "4.4.0"
    sha256 arm:   "fa4020ac4c3259bbed6d456c4b0e13126fe404c1b474654bffd583335f5d0ab5",
           intel: "7ed0e94cf92fdf2e8d51ee42c5f7c3478fbcef9630eb12dccf203f5e72bb517f"
    arch_bonus = Hardware::CPU.intel? ? "-Intel" : ""
    url "https://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for#{arch_bonus}-Mac-#{arch}-v#{version.dots_to_hyphens}.dmg"
  end

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

  depends_on macos: ">= :high_sierra"

  app "Sonic Pi.app"
end
