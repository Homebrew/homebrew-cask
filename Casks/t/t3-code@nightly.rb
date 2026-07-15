cask "t3-code@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.0.29-nightly.20260715.816"

  artifact = on_system_conditional linux: "T3-Code-#{version}-x86_64.AppImage",
                                   macos: "T3-Code-#{version}-#{arch}.dmg"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/#{artifact}",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code Nightly"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url "https://github.com/pingdotgg/t3code/releases"
    regex(/(\d+(?:\.\d+)+-nightly\.\d{8}\.\d+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  on_macos do
    sha256 arm:   "33043ee8a990f02950e512d45571c49693b000ec79b609dbb03b2426b14351e5",
           intel: "854c22a7d97fbcfc8abe9dcde9919e8e999a8d4677c7035a2b5ee0c3af075d2c"

    auto_updates true
    depends_on macos: :monterey

    app "T3 Code (Nightly).app"

    zap trash: [
      "~/.t3/userdata",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Application Support/t3code",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end

  on_linux do
    sha256 "9bfea10658b820bc28e866309f4bed2917a027ae3960a0cb4855c32ee8568091"

    depends_on arch: :x86_64
    app_image artifact, target: "T3 Code Nightly.AppImage"
  end
end
