cask "tng-digital-mini-program-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "3.7.1031"
    sha256 "890d30a02ce90a002e86878dc869084031135528082f056c35ed51e90b3a34ba"
  end
  on_intel do
    version "3.7.1032"
    sha256 "64d3d927f548f92d31c222d89470c7fb48593f7f29ef845a5d0f36e24e796ea6"
  end

  url "https://ide-release.marmot-cloud.com/storage/miniprogram-studio/common/#{version.major_minor}/MiniProgramStudio-#{version}-#{arch}.dmg",
      verified: "ide-release.marmot-cloud.com/storage/miniprogram-studio/common/"
  name "TnG Digital Mini Program Studio"
  desc "IDE for building mini programs"
  homepage "https://miniprogram.tngdigital.com.my/index"

  livecheck do
    skip "No reliable automated version detection available"
  end

  depends_on macos: ">= :high_sierra"

  app "MiniProgramStudio.app"

  zap trash: [
    "~/Library/Application Support/MiniProgramStudio",
    "~/Library/Preferences/com.ant.miniprogram.intl.poc.plist",
    "~/Library/Saved Application State/com.ant.miniprogram.intl.poc.savedState",
  ]
end
