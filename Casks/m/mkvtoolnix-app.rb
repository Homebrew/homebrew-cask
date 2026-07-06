cask "mkvtoolnix-app" do
  arch arm: "arm64", intel: "x86_64"

  version "100.0-1"
  sha256 arm:   "155ded045a35bd1079ba466c2e1011bdcb1a85b74c984ed5627841cd313850a0",
         intel: "aea7ab9c7146943fd9535b2ea60c074deeea3181a9c6736e58e1437456906c0a"

  url "https://mkvtoolnix.download/macos/releases/#{version.split("-").first}/MKVToolNix-#{version}-#{arch}.dmg"
  name "MKVToolNix"
  desc "GUI including a set of tools to create, alter and inspect Matroska files (MKV)"
  homepage "https://mkvtoolnix.download/"

  livecheck do
    url "https://mkvtoolnix.download/macos/releases/"
    regex(%r{.*?/MKVToolNix[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      major_version = page.scan(%r{href=".*?releases/(\d+(?:\.\d+)+)/}i)&.max&.first
      next if major_version.blank?

      version_directory = Homebrew::Livecheck::Strategy.page_content("https://mkvtoolnix.download/macos/releases/#{major_version}/")
      version_directory[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  depends_on macos: :ventura

  app "MKVToolNix.app"
  binary "#{appdir}/MKVToolNix.app/Contents/MacOS/mkvextract"
  binary "#{appdir}/MKVToolNix.app/Contents/MacOS/mkvinfo"
  binary "#{appdir}/MKVToolNix.app/Contents/MacOS/mkvmerge"
  binary "#{appdir}/MKVToolNix.app/Contents/MacOS/mkvpropedit"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvextract.1"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvinfo.1"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvmerge.1"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvpropedit.1"
  manpage "#{appdir}/MKVToolNix.app/Contents/MacOS/man/man1/mkvtoolnix-gui.1"

  zap trash: [
    "~/Library/Preferences/bunkus.org/mkvtoolnix-gui",
    "~/Library/Saved Application State/download.mkvtoolnix.MKVToolNix.savedState",
  ]
end
