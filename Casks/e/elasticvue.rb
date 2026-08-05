cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "amd64.AppImage"

  version "1.15.0"

  on_macos do
    sha256 arm:   "db40979ec2667c9cb3aced573dc4ff33e1f6b4515fb33da6883350ec8e9a0f25",
           intel: "a635d45129043fd0687d70339512e458776a5aa546e4fa3cbd197ed9a136e6da"

    app "elasticvue.app"

    zap trash: [
      "~/Library/Application Support/com.elasticvue.app",
      "~/Library/Caches/com.elasticvue.app",
      "~/Library/Caches/elasticvue",
      "~/Library/Preferences/elasticvue.plist",
      "~/Library/Saved Application State/com.elasticvue.app.savedState",
      "~/Library/WebKit/com.elasticvue.app",
      "~/Library/WebKit/elasticvue",
    ]
  end
  on_linux do
    sha256 "b409fef9faa16c238ed738b38c5d75c796bf465e80399466fbdfbd5938dbc193"

    depends_on arch: :x86_64

    app_image "elasticvue_#{version}_amd64.AppImage", target: "Elasticvue.AppImage"
  end

  url "https://github.com/cars10/elasticvue/releases/download/v#{version}/elasticvue_#{version}_#{url_end}",
      verified: "github.com/cars10/elasticvue/"
  name "Elasticvue"
  desc "Elasticsearch GUI"
  homepage "https://elasticvue.com/"

  auto_updates true
end
