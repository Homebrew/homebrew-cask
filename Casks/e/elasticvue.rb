cask "elasticvue" do
  arch arm:   "aarch64",
       intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "1.17.0"
  sha256 arm:          "66a5be9464f737d5b916074f0a17604ceb628b891d7ac89c033803e3ca306cb0",
         intel:        "1b6895dbe91ff340082816829585699b1dcff0f7dcaf108276d82b7cfc949110",
         x86_64_linux: "38ea7839fea449338c93d148899880b78230a6c37406996137b3d6f97e82f6b8"

  on_macos do
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
    depends_on arch: :x86_64

    app_image "elasticvue_#{version}_#{arch}.AppImage", target: "Elasticvue.AppImage"
  end

  url "https://github.com/cars10/elasticvue/releases/download/v#{version}/elasticvue_#{version}_#{arch}.#{os}"
  name "Elasticvue"
  desc "Elasticsearch GUI"
  homepage "https://elasticvue.com/"

  auto_updates true
end
