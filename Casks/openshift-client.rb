cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.18"
  sha256 arm:   "7989fa72cd9935b2931519932dbbc7fc41e1fdda0346df358930ff1f4ca21de7",
         intel: "a2d839d7ce7dcf74422d10f465bf5d46278d99ae79961bdec05cef1ffe3e7d6c"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
