cask "kdeconnect@nightly" do
  arch arm: "arm64", intel: "x86_64"

  version "master-5183"
  sha256 arm:   "f7487ee735347f63cbc81c14a607efb7a2bf8f6033a7af87917277f352ddb070",
         intel: "f579155cb1e0d8bc27ffc0c0ee34a13ca86046049e98fc36684ca3a4d3dc5102"

  url "https://cdn.kde.org/ci-builds/network/kdeconnect-kde/master/macos-#{arch}/kdeconnect-kde-#{version}-macos-clang-#{arch}.dmg"
  name "KDE Connect"
  desc "Multi-platform app that allows your devices to communicate"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/network/kdeconnect-kde/master/"
    regex(/kdeconnect-kde-(master-\d+)-macos-clang/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0] }
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "KDE Connect.app"

  zap trash: [
    "~/Library/Application Support/kdeconnect.app",
    "~/Library/Preferences/kdeconnect",
  ]
end
