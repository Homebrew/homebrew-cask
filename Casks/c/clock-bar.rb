cask "clock-bar" do
  version "1.0,1801968"
  sha256 "88d1ee551f2edbe25e12098dbdbb2edc5f29e21cd52095e5ea275667a4cbffd1"

  url "https://github.com/nihalsharma/Clock-Bar/files/#{version.csv.second}/Clock.Bar.app.zip"
  name "Clock Bar"
  desc "Macbook | Clock, right on the touch bar"
  homepage "https://github.com/nihalsharma/Clock-Bar/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest do |json, regex|
      version_match = json["tag_name"]&.match(regex)
      next if version_match.blank?

      id_match = json["body"]&.match(%r{/(\d+)/Clock\.Bar\.app\.zip}i)
      next if id_match.blank?

      "#{version_match[1]},#{id_match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "Clock Bar.app"

  zap trash: [
    "~/Library/Application Scripts/nihalsharma.clock-bar",
    "~/Library/Containers/nihalsharma.clock-bar",
  ]

  caveats do
    requires_rosetta
  end
end
