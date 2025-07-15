cask "react-studio" do
  version "1814,426"
  sha256 "88e4874ca5f14a6fb442b0aeb371e48d5c8e1ced24099cf5c021771482a44423"

  url "https://s3.amazonaws.com/sc.neonto.com/ReactStudio_v#{version.csv.first}_build#{version.csv.second}.zip",
      verified: "s3.amazonaws.com/sc.neonto.com/"
  name "ReactStudio"
  desc "App design environment"
  homepage "https://reactstudio.com/"

  livecheck do
    url "https://reactstudio.com/api/download/reactstudio",
        post_json: {
          "Sec-Ch-Ua-Platform": "macOS",
        }
    regex(/ReactStudio[._-]v?(\d+(?:\.\d+)*)[._-]build(\d+)/i)
    strategy :json do |json|
      match = json["downloadUrl"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :sierra"

  app "React Studio.app"

  zap trash: [
    "~/Documents/React Studio",
    "~/Library/Application Support/React Studio",
    "~/Library/Caches/com.neonto.ReactStudio",
    "~/Library/Cookies/com.neonto.ReactStudio.binarycookies",
    "~/Library/Preferences/com.neonto.ReactStudio.plist*",
    "~/Library/Saved Application State/com.neonto.ReactStudio.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
