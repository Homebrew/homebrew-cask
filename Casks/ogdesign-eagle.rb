cask "ogdesign-eagle" do
  version "2.0,8"

  if Hardware::CPU.intel?
    sha256 "fd487e03ab89bc85d6a9dff65286f8e2b20a91cfd66d2dfe20624536505af891"
    url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-build#{version.after_comma}.dmg",
        verified: "eagleapp.s3-accelerate.amazonaws.com/"
  else
    sha256 "66d1bcd58ec4efd2426ee40aefe834fa2e367f40e90b798f4625123a8967cef6"
    url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-M1-build#{version.after_comma}.dmg",
        verified: "eagleapp.s3-accelerate.amazonaws.com/"
  end

  appcast "https://eagle.cool/changelog"
  name "Eagle"
  desc "Organize all your reference images in one place"
  homepage "https://eagle.cool/macOS"

  app "Eagle.app"
end
