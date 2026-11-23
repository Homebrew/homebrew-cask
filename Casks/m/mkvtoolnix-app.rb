cask "mkvtoolnix-app" do
  arch arm: "arm64", intel: "x86_64"

  version "104.0-1"
  sha256 arm:   "ce35092310e8f51a0cc0a1b5ba52fe2ca8fea8af4a8c0e4cf9f07bb70ecd3bd5",
         intel: "50a09c0906eeab4f96b4447457b362056f1da4899fe526f7c72d9d3e1c7ff42b"

  release_version = version.split("-").first
  url "https://mkvtoolnix.download/macos/releases/#{release_version}/MKVToolNix-#{version}-#{arch}.dmg"
  name "MKVToolNix"
  desc "GUI including a set of tools to create, alter and inspect Matroska files (MKV)"
  homepage "https://mkvtoolnix.download/"

  livecheck do
    url "https://mkvtoolnix.download/macos/releases/"
    regex(/href=.*?MKVToolNix[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      main_version = page.scan(%r{href=.*?/v?(\d+(?:\.\d+)+)/}i)
                         .max_by { |match| Version.new(match[0]) }
                         &.first
      next if main_version.blank?

      version_directory = Homebrew::Livecheck::Strategy.page_content("https://mkvtoolnix.download/macos/releases/#{main_version}/")
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
