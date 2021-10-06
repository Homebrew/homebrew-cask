cask "dosbox-x" do
  if Hardware::CPU.intel?
    version "0.83.18,20211001082411"
    sha256 "c6a9fb6e410b5db7d1d8b55662a9137dec6c46098edacb3da3ff333fa62a9f82"

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
    version "0.83.17,20210831230855"
    sha256 "6bd75b2b09b3a1098832cbe894f0e430bf32b814ac469195022e9f045677e5c5"

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
