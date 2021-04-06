cask "dosbox-x" do
  if Hardware::CPU.intel?
    version "0.83.12,20210401031910"
    sha256 "ea72dc2e43b4c0341a8f5fea4aca7834a13f673cb8549029863692acd207cc4d"

    url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.before_comma}/dosbox-x-macosx-x86_64-#{version.after_comma}.zip",
        verified: "github.com/joncampbell123/dosbox-x/"
  else
    version "0.83.12,20210401114115"
    sha256 "40c59f2234a13db5d28caa27435eb906af82994a3322971ff459210635659638"

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
