cask "cnkiexpress" do
  version "0.1.20"
  sha256 "0d2459f85d7949277545a869eba5fe18ab2d0273cfd3291a690ff8a5a3942cd3"

  url "https://download.cnki.net/cnkiexpress/\%E5\%85\%A8\%E7\%90\%83\%E5\%AD\%A6\%E6\%9C\%AF\%E5\%BF\%AB\%E6\%8A\%A5-#{version}.dmg"
  name "com.cnki.cnkiexpress"
  desc "Academic application"
  homepage "https://cajviewer.cnki.net/index.html"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "全球学术快报.app"

  uninstall delete:    "/Applications/全球学术快报.app",
            quit:      "com.cnki.cnkiexpress"
end
