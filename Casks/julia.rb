cask "julia" do
  arch arm: "aarch64", intel: "x64"

  version "1.9.2"
  sha256 arm:   "3c694e272980f5a7918fc48f85d4bb480b587e0b88050d7a7344bca57a3a146c",
         intel: "43dbdf32e69dfa763b831587196048d9345757aec1c34644ec48c46f9a737287"

  url "https://julialang-s3.julialang.org/bin/mac/#{arch}/#{version.major_minor}/julia-#{version}-mac#{arch.delete_prefix("x")}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/"
    regex(/href=.*?julia[._-]v?(\d+(?:\.\d+)+)[._-]mac#{arch.delete_prefix("x")}\.dmg/i)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: [
    "~/.julia",
    "~/Library/Logs/Julia",
    "~/Library/Preferences/com.github.Julia.plist",
    "~/Library/Preferences/julia.plist",
    "~/Library/Saved Application State/com.github.Julia.savedState",
  ]
end
