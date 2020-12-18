cask "novabench" do
  version "4.0.2,11"
  sha256 :no_check

  url "https://novabench.com/files/novabench.dmg"
  appcast "https://novabench.com/download#personal"
  name "Novabench"
  desc "Benchmark tool to quickly test and compare the computer's performance"
  homepage "https://novabench.com/"

  app "Novabench.app"
end
