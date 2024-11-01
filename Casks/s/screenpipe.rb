cask "screenpipe" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.98"
  sha256 arm:   "2cb4d60689ee22bf7c639e75cbcb57d3b8f21732fc383ff57592b4044b5e4396",
         intel: "969dad8fdbf79af2fa6ea14b604ac656041d8fa0281777b70bac6893d13bd34b"

  url "https://github.com/mediar-ai/screenpipe/releases/download/v#{version}/screenpipe-#{version}-#{arch}-apple-darwin.tar.gz"
  name "screenpipe"
  desc "Library to build personalized AI powered by what you've seen, said, or heard"
  homepage "https://github.com/mediar-ai/screenpipe"

  auto_updates true
  depends_on formula: "ffmpeg"
  container type: :naked

  artifact "bin/screenpipe", target: "#{appdir}/screenpipe/bin/screenpipe"
  artifact "lib/libscreenpipe.dylib", target: "#{appdir}/screenpipe/lib/libscreenpipe.dylib"
  artifact "lib/libscreenpipe_#{arch}.dylib", target: "#{appdir}/screenpipe/lib/libscreenpipe_#{arch}.dylib"

  zap trash: "~/.screenpipe"

  def caveats
    <<~EOS
      Bun is not available on Homebrew
      To install Bun, please visit the official website:
      https://bun.sh
      Follow the instructions there to install Bun on your system.
    EOS
  end
end
