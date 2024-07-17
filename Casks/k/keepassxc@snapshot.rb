cask "keepassxc@snapshot" do
  version :latest
  sha256 :no_check

  url "https://snapshot.keepassxc.org/latest/" do |page|
    file_path = page[/href="([^"]+-snapshot\.dmg)"/, 1]
    URI.join(page.url, file_path)
  end
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  deprecate! date: "2025-05-01", because: :unsigned

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: "~/.keepassxc"

  caveats do
    requires_rosetta
  end
end
