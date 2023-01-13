cask "julia" do
  arch arm: "aarch64", intel: "x64"

  version "1.8.5"
  sha256 arm:   "7f6a23a4a1d864f69e65b1542fd3d1cf324d59c922ac43804b1ba077b9cc475d",
         intel: "22afd5e28a8a809dc7be0bc99cf491391a31af5669b173cf3318e433274148db"

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
