cask "fspy" do
  version "1.0.3"
  sha256 "3aca686ea9d976580936279fbb3637698a3ba832d3cdd74dbbf79129b4dd2f56"

  url "https://github.com/stuffmatic/fSpy/releases/download/v#{version}/fSpy-#{version}.dmg",
      verified: "github.com/stuffmatic/fSpy"
  appcast "https://github.com/stuffmatic/fSpy/releases.atom"
  name "fSpy"
  desc "Open source still image camera matching"
  homepage "https://fspy.io/"

  def caveats
    <<~EOS
      Download the Blender fSpy plugin here:
      https://github.com/stuffmatic/fSpy-Blender
      https://github.com/stuffmatic/fSpy-Blender/releases/download/v#{version}/fSpy-Blender-#{version}.zip
    EOS
  end

  app "fSpy.app"

  zap trash: "~/Library/Application Support/fspy"
end
