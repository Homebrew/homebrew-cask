cask "pique" do
  version "0.1.0b6"
  sha256 "3c6daa8f2ee9fd9fb7c2175a15fbfb5598f71dba86c7137701b80cfb473e6eaa"

  url "https://github.com/macadmins/pique/releases/download/v#{version}/Pique-#{version}.pkg"
  name "Pique"
  desc "Quick Look extension for syntax-highlighted file previews"
  homepage "https://github.com/macadmins/pique"

  depends_on macos: :sequoia

  pkg "Pique-#{version}.pkg"

  uninstall pkgutil: "io.macadmins.Pique"

  zap trash: "~/Library/Preferences/io.macadmins.pique.plist"
end
