cask "novabench" do
  version "5.0.6"
  sha256 :no_check

  url "https://novabench.com/files/novabench.dmg"
  name "Novabench"
  desc "Benchmark tool to quickly test and compare the computer's performance"
  homepage "https://novabench.com/"

  livecheck do
    url "https://novabench.com/download#personal"
    regex(/Novabench\s*(?:<!--[^>]*-->)?\s*(\d+(?:\.\d+)*)/)
  end

  app "Novabench.app"
end
