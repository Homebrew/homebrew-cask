cask "novabench" do
  version "4.0.2"
  sha256 "bf683fd7f8377617bfd956dc536a560324221e0a7f0bad8012d71ace4369a1e2"

  url "https://novabench.com/files/novabench.dmg"
  appcast "https://novabench.com/download#personal"
  name "Novabench"
  desc "Benchmark tool to quickly test and compare the computer's performance"
  homepage "https://novabench.com/"

  app "Novabench.app"
end
