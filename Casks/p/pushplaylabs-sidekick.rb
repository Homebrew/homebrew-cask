cask "pushplaylabs-sidekick" do
  arch arm: "arm64", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "macm1", intel: "mac"

  on_arm do
    version "122.59.1.38679,f9c406c"
    sha256 "5f9713b34e0d0332926078e232b98390e54b7afdfbab46a666efd5b58a0d6d28"
  end
  on_intel do
    version "120.58.1.38487,aa998ff"
    sha256 "fb15ea0e5422c26bc802aa8d6395ba12ffde37432ec0b71294e0279d36a033c2"
  end

  url "https://cdn.meetsidekick.com/browser-builds/sidekick-mac-release-#{arch}-#{version.csv.first}-#{version.csv.second}-df.dmg"
  name "Sidekick"
  desc "Browser designed for modern work"
  homepage "https://www.meetsidekick.com/"

  livecheck do
    url "https://api.meetsidekick.com/downloads/df/#{livecheck_folder}"
    regex(/[_-](\d+(?:\.\d+)+)[_-](.+)[._-](?:default|df)\.dmg/i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Sidekick.app"

  zap trash: [
    "~/Library/Application Support/Sidekick",
    "~/Library/Caches/Sidekick",
    "~/Library/Preferences/com.pushplaylabs.sidekick.plist",
    "~/Library/Saved Application State/com.pushplaylabs.sidekick.savedState",
  ]
end
