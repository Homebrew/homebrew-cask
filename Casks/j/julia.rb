cask "julia" do
  arch arm: "aarch64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "966467d2a9a0415ef8bdc4c6292fdf97ee73874e5948f4a628596d44a0569924",
         intel: "4ae942298304f155b33e8fdfd99e1f329b0c94de2a2c8c14a053d734153a7e37"

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
  manpage "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/share/man/man1/julia.1"

  zap trash: [
    "~/.julia",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.julia.sfl*",
    "~/Library/Logs/Julia",
    "~/Library/Preferences/com.github.Julia.plist",
    "~/Library/Preferences/julia.plist",
    "~/Library/Saved Application State/com.github.Julia.savedState",
  ]
end
