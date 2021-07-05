cask "dosbox-x" do
  if Hardware::CPU.intel?
    version "0.83.15,20210701214958"
    sha256 "bad0d195ddbad0b2f187a4ab7a2b51bcb68b48c3edb7931d09cfb4c9add5fb2e"

    url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x86_64-#{version.after_comma}.zip",
        verified: "github.com/joncampbell123/dosbox-x/"

    livecheck do
      url "https://github.com/joncampbell123/dosbox-x/releases/latest"
      strategy :page_match do |page|
        match = page.match(%r{href=.*?/dosbox-x-v?(\d+(?:\.\d+)*)/dosbox-x-macosx-x86_64-([^/]+)\.zip}i)
        "#{match[1]},#{match[2]}"
      end
    end
  else
    version "0.83.15,20210701214931"
    sha256 "74b4d46a371f3c4eb73ff4ac39e22a8878f4610035b184b54e578234448c7fe9"

    url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-arm64-#{version.after_comma}.zip",
        verified: "github.com/joncampbell123/dosbox-x/"

    livecheck do
      url "https://github.com/joncampbell123/dosbox-x/releases/latest"
      strategy :page_match do |page|
        match = page.match(%r{href=.*?/dosbox-x-v?(\d+(?:\.\d+)*)/dosbox-x-macosx-arm64-([^/]+)\.zip}i)
        "#{match[1]},#{match[2]}"
      end
    end
  end

  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  app "dosbox-x/dosbox-x.app"

  zap trash: [
    "~/Library/Preferences/com.dosbox-x.plist",
    "~/Library/Preferences/mapper-dosbox-x.map",
  ]
end
