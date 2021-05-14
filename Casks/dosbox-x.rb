cask "dosbox-x" do
  if Hardware::CPU.intel?
    version "0.83.13,20210430230655"
    sha256 "0854427a1fec933d886a65285d0fe5dc54e5cb842d2a614efd40176ffdd931d5"

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
    version "0.83.13,20210430230543"
    sha256 "205695b80c2976998f0e637b6515c3b4c6d4364bb1489564e9ec57aa32682a9b"

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
end
