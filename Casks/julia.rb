cask "julia" do
  version "1.7.0"

  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  if Hardware::CPU.arm?
    url "https://julialang-s3.julialang.org/bin/mac/aarch64/macaarch64/julia-#{version}-macaarch64.dmg"
    sha256 "6852aab9a40a3265551eb85ad19ff16c3ba5410c852f5e7949972cb9911d473a"
  else
    url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
    sha256 "9a7919448e13ba9cefb0f0fe8178ca089333c86e2722f1e482a1dc8c0e2f03b6"
  end

  livecheck do
    url "https://julialang.org/downloads/"
    regex(/href=.*?julia[._-]v?(\d+(?:\.\d+)+)[._-]mac(?:aarch)?64\.dmg/i)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: "~/.julia"
end
