cask "simply-fortran" do
  url_string = if MacOS.version <= :big_sur
    "-x86_64.legacy"
  else
    Hardware::CPU.intel? ? "-x86_64" : "-arm64"
  end

  version "3.25.3754"

  if MacOS.version <= :big_sur
    sha256 "eefcde488f42eaed99dd64215b7ec05bb2daf6c824418cede10c63a74128a220"
  elsif Hardware::CPU.intel?
    sha256 "4fb8a416887056cf7248d73ed88cec95066548d2b5f053235fc79bb41d9064bf"
  else
    sha256 "d0d6a723ac2d18a4a5878594b58028c6c45711d837a6e02152bb7d9c85adefa2"
  end

  url "https://download.simplyfortran.com/#{version.major_minor}/macos/simplyfortran-#{version}#{url_string}.dmg"
  name "Simply Fortran"
  desc "Fortran development environment"
  homepage "https://simplyfortran.com/"

  livecheck do
    url "https://simplyfortran.com/download/?platform=macos"
    regex(/href=.*?simplyfortran[._-]v?(\d+(?:\.\d+)+)#{url_string}\.dmg/i)
  end

  app "Simply Fortran.app"
end
