cask "dosbox-x" do
  if Hardware::CPU.intel?
    version "0.83.9,20201231203002"

    sha256 "7ce7a9252a8b0ea7b9f996145232946ab1b083defb9f6f5052cb8a2f5914da68"

    url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x86_64-#{version.after_comma}.zip",
        verified: "github.com/joncampbell123/dosbox-x/"
  else
    version "0.83.9,20201231202930"

    sha256 "ae6eb6ff95a236dbfd2a9b8b00bb0a419ea60defe359646c8d5fa74b15222d94"

    url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-arm64-#{version.after_comma}.zip",
        verified: "github.com/joncampbell123/dosbox-x/"
  end

  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url "https://github.com/joncampbell123/dosbox-x/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/dosbox-x-v?(\d+(?:\.\d+)*)/dosbox-x-macosx-x86_64-([^/]+)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "dosbox-x/dosbox-x.app"
end
