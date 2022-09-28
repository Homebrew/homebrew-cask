cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.7"
  sha256 arm:   "a98012a005eab72a8215bc5b8cd0ac9177564de2ef8ac834565d90656b4bce42",
         intel: "f9b082595ad8e6ee7db5711779c7ea9ec539147e2c5716774391d728b8d392c5"

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
