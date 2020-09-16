cask "novabench" do
  version "4.0.1"
  sha256 "024eae6de4317de11bcae5e7211dfac02d4bc19eb9ff79ba9ca9bfe33196804b"

  url "https://novabench.com/files/novabench.dmg"
  appcast "https://novabench.com/download#personal"
  name "Novabench"
  desc "Benchmark tool to quickly test and compare the computer's performance"
  homepage "https://novabench.com/"

  app "Novabench.app"
end
