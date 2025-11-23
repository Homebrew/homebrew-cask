cask "tng-digital-mini-program-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "3.9.1047"
    sha256 "24fc887a78ce1766c8ff9c9d2ba8c0d7f80a30c6fd104ebfae0db74239a028d9"
  end
  on_intel do
    version "3.9.1048"
    sha256 "a9d8d4318b49f2810e73557ae88c2acbe1c925ceb9ba36033a529fecc4a6cac4"
  end

  url "https://ide-release.marmot-cloud.com/storage/miniprogram-studio/common/#{version.major_minor}/MiniProgramStudio-#{version}-#{arch}.dmg",
      verified: "ide-release.marmot-cloud.com/storage/miniprogram-studio/common/"
  name "TnG Digital Mini Program Studio"
  desc "IDE for building mini programs"
  homepage "https://miniprogram.tngdigital.com.my/index"

  livecheck do
    skip "No reliable automated version detection available"
  end

  app "MiniProgramStudio.app"

  zap trash: [
    "~/Library/Application Support/MiniProgramStudio",
    "~/Library/Preferences/com.ant.miniprogram.intl.poc.plist",
    "~/Library/Saved Application State/com.ant.miniprogram.intl.poc.savedState",
  ]
end
