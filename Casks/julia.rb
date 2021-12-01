cask "julia" do
  arch, arch_folder = Hardware::CPU.intel? ? ["mac64", "x64"] : ["macaarch64", "aarch64"]

  version "1.7.0"

  if Hardware::CPU.intel?
    sha256 "16768d5d40f7c0779da2d0c8ec0c3386f96193d32e91ff9997ba7136b91cfd15"
  else
    sha256 "6852aab9a40a3265551eb85ad19ff16c3ba5410c852f5e7949972cb9911d473a"
  end

  url "https://julialang-s3.julialang.org/bin/mac/#{arch_folder}/#{version.major_minor}/julia-#{version}-#{arch}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/"
    regex(/href=.*?julia[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: [
    "~/.julia",
    "~/Library/Preferences/julia.plist",
  ]
end
